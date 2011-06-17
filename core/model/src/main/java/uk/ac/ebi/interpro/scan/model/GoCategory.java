/*
 * Copyright 2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package uk.ac.ebi.interpro.scan.model;

import javax.xml.bind.annotation.XmlType;
import java.io.Serializable;

/**
 * Gene Ontology category.
 *
 * @author  Antony Quinn
 * @version $Id$
 */
@XmlType(name="GoCategoryType")
public enum GoCategory implements Serializable {

    BIOLOGICAL_PROCESS("GO:0008150", "Biological Process", "Any process specifically pertinent to the functioning of " +
            "integrated living units: cells, tissues, organs, and organisms. A process is a collection of molecular " +
            "events with a defined beginning and end."),

    CELLULAR_COMPONENT("GO:0005575", "Cellular Component", "The part of a cell or its extracellular environment in " +
            "which a gene product is located. A gene product may be located in one or more parts of a cell and its " +
            "location may be as specific as a particular macromolecular complex, that is, a stable, persistent " +
            "association of macromolecules that function together. "),

    MOLECULAR_FUNCTION("GO:0003674", "Molecular Function", "Elemental activities, such as catalysis or binding, " +
            "describing the actions of a gene product at the molecular level. A given gene product may exhibit one " +
            "or more molecular functions.");

    private final String identifier;
    private final String name;
    private final String description;

    private GoCategory(String identifier, String name, String description) {
        this.identifier  = identifier;
        this.name        = name;
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getIdentifier() {
        return identifier;
    }

    @Override public String toString() {
        return name;
    }
    
    public static GoCategory parseName(String name)  {
        for (GoCategory m : GoCategory.values()) {
            if (name.equals(m.getName()))   {
                return m;
            }
        }
        throw new IllegalArgumentException("Unrecognised name: " + name);
    }

}